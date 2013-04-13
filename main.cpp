#include <iostream>
#include <vector>
#include <string>
#include <memory>
#include <fstream>
#include <algorithm>
#include <chrono>
#include <utility>
#include "BbStopWatch.hpp"

using namespace std;

template<class T, class S = int>
vector<T> return_vector(S size, T val)
{
	return vector<T>(size, val);
}

auto mixed_output_function(int x, float y) -> decltype(x*y)
{
	return x*y;
}

class TC
{
private:
	int i = 0;
	static int count;
	int whoAmI = ++count;

public:
	TC() { cout << "Building a default TC! I'm number " << whoAmI << endl; }
	explicit TC(int ii) : i(ii) { cout << "Building a TC with an int! I'm number " << whoAmI << endl; }
	TC(const TC& a) : i(a.i) { cout << "Copying a TC! I'm number " << whoAmI << endl; }
	TC(TC&& a) : i(std::move(a.i)) { cout << "Moving a TC! I'm number " << whoAmI << endl; }
	~TC() { --count; cout << "Destroying a TC! I'm number " << whoAmI << endl; }

	TC& operator=(const TC& a)
	{
		if (this != &a)
		{
			cout << "Copying a TC, number " << a.whoAmI << ", with operator= ! I'm number " << whoAmI << endl;
			i = a.i;
		}

		return *this;
	}

	TC& operator=(TC&& a)
	{
		cout << "Moving a TC, number " << a.whoAmI << ", with operator= ! I'm number " << whoAmI << endl;

		std::swap(i, a.i);

		return *this;
	}
};

int TC::count = 0;

TC get_TC(int ii) { return TC(ii); }

int main()
{
	cout << "C++11 Test Program" << endl << endl;

/*
	{
	// Test - Copy vs Move with a std::vector
	cout << "////////////////////////////////////////////////////" << endl;
	cout << "Test - Copy vs Move with a std::vector" << endl << endl;

	bool printProgress = false;
	BbStopWatch sw(BbStopWatch::TimeUOM::seconds);
	int vSize = 10;

	// Copy vectors, without moving
	sw.start();
	for (int i = 1; i <= 10000000; ++i)
	{
		vector<double> v1(vSize, 666.);
		vector<double> v2 = v1;
		v2[6] = 667.;

		if (i % 100000 == 0 && printProgress)
		{
			cout << "Working..." << sw.get_total_running_time() << " s have passed already and I have completed " << i << " iterations" << endl;
		}
	}

	cout << "Total time required to create and copy a " << vSize << " elements vector for 10M times = " << sw.split() << " s" << endl;

	// Move vectors, without copying
	for (int i = 0; i < 10000000; ++i)
	{
		vector<double> v1 = return_vector<double>(vSize, 666.);
		v1[6] = 667.;
	}

	cout << "Total time required to create and move a " << vSize << " elements vector for 10M times = " << sw.split() << " s" << endl << endl;
	}
*/
/*
	{
	// Test - Stopwatch
	cout << "////////////////////////////////////////////////////" << endl;
	cout << "Test - BbStopWatch" << endl << endl;

	char action;
	bool keepGoing = true;

	sw.reset();
	while (keepGoing)
	{
		cout << "What action do you want to perform on the StopWatch?" << endl;
		cout << " 1) Start" << endl;
		cout << " 2) Stop" << endl;
		cout << " 3) Get split time" << endl;
		cout << " 4) Get total running time" << endl;
		cout << " 5) Reset" << endl;
		cout << " 6) Restart" << endl;
		cout << " q) Quit this test" << endl;
		cin >> action; cout << endl;

		switch (action)
		{
		case '1':
			sw.start();
			break;

		case '2':
			sw.stop();
			break;

		case '3':
			cout << "Split time: " << sw.split() << " s" << endl;
			break;

		case '4':
			cout << "Total running time: " << sw.get_total_running_time() << " s" << endl;
			break;

		case '5':
			sw.reset();
			break;

		case '6':
			sw.restart();
			break;

		case 'q':
		case 'Q':
			keepGoing = false;
			continue;
			break;

		default:
			cout << "Invalid choice!" << endl;
			continue;
			break;
		}

		cout << "The stopwatch is " << (sw.is_running() ? "" : "not ") << "running" << endl << endl;
	}
	}
*/
/*
	{
	// Test - Strongly typed enums and constexpr
	cout << "////////////////////////////////////////////////////" << endl;
	cout << "Test - Strongly typed and scoped Enums" << endl << endl;

	enum OldStyleEnum { old1, old2, old3 };
	enum class NewStyleEnumImplicit { newImplicit1, newImplicit2, newImplicit3 };
	enum class NewStyleEnumChar : char { newChar1, newChar2, newChar3 };
	enum class NewStyleEnumBbSW : long long { newImplicit1, newImplicit2, newImplicit3 };

	OldStyleEnum en1 = old1;
	int int1 = old2;
	int int2 = (int)NewStyleEnumChar::newChar1;
	int nsi = (int)NewStyleEnumBbSW::newImplicit1;

	constexpr int int3 = old1 + old2;

	cout << "Done." << endl << endl;

	// Test - decltype
	cout << "////////////////////////////////////////////////////" << endl;
	cout << "Test - various usages of decltype" << endl << endl;

	int dt1 = 2;
	float dt2 = 4.6;
	double dt3 = 0.4;
	bool dt4 = true;

	typedef decltype(dt1*dt2) IntFloat;
	typedef decltype(dt1*dt3) IntDouble;
	typedef decltype(dt1*dt4) IntBool;
	typedef decltype(dt2*dt3) FloatDouble;
	typedef decltype(dt2*dt4) FloatBool;
	typedef decltype(dt3*dt4) DoubleBool;

	DoubleBool dt5 = 1;

	cout << "decltype(int*float) = " << typeid(dt1*dt2).name() << ", dt1*dt2 = " << dt1*dt2 << endl;
	cout << "DoubleBool dt5 = " << dt5 << endl;

	cout << "mixed_type_func(2, 5.6) = " << mixed_output_function(2, 5.6) << endl;
	cout << "Done." << endl << endl;
	}
*/
/*
	{
	// Test - Initializer lists and uniform initialization
	cout << "////////////////////////////////////////////////////" << endl;
	cout << "Test - Initializer lists!!!" << endl << endl;

	vector<int> v1({ 1, 6, 3 });		// Explicitly call the constructor using ( initializer_list )
	vector<int> v2 = { 6, 1, 3 };		// Operator= causes a vector<int> to be constructed on the rhs, then moved to v2?
	vector<int> v3{ 2, 4, 9 };			// Call the constructor that takes an initializer_list

	std::initializer_list<double> doubleList1{ 1., 3., 6.66 };
	std::initializer_list<double> doubleList2 = { 1.34, .3, 6.66 };
	std::initializer_list<BbStopWatch*> stopWatches = { new BbStopWatch(BbStopWatch::TimeUOM::seconds), new BbStopWatch(BbStopWatch::TimeUOM::milliseconds) };

	vector<vector<int>> intVectors({ vector<int>{10}, vector<int>(9), { 11, 7.5 } });
	for (int i = 0; i < intVectors.size(); ++i)
	{
		for (int j = 0; j < intVectors[i].size(); ++j)
		{
			cout << "element " << i << "," << j << ": " << intVectors[i][j] << endl;
		}
	}

	int aaa{7};
	float fff{8.4};
	int a{8.4};
	int b = {5.6};
	string s1{"ciao"};
	string s2{s1};

	cout << aaa << " " << fff << " " << a << " " << b << endl;
	cout << s1 << " " << s2 << endl;
	cout << "mixed_output_function({5.2}, {4.5}) = " << mixed_output_function({5.2}, {4.5}) << endl;
	cout << "Done." << endl << endl;
	}
*/
	{
	// Test - More tests on copy/move constructors, default and deleted constructors, initializer lists
	cout << "////////////////////////////////////////////////////" << endl;
	cout << "Test - Copy or move? Let's see!" << endl << endl;

#define DO_AND_PRINT(x) cout << #x << " produces the following:" << endl; x
	DO_AND_PRINT(TC tc1(1));
	system("pause"); cout << endl;

	DO_AND_PRINT(TC tc2(tc1));
	system("pause"); cout << endl;

	DO_AND_PRINT(TC tc3);
	system("pause"); cout << endl;

	DO_AND_PRINT(tc3 = tc2);
	system("pause"); cout << endl;

	DO_AND_PRINT(TC tc4(get_TC(2)));
	system("pause"); cout << endl;

	DO_AND_PRINT(TC tc5);
	system("pause"); cout << endl;

	DO_AND_PRINT(tc5 = get_TC(3));
	system("pause"); cout << endl;

	DO_AND_PRINT(TC tc6(std::move(tc1)));
	system("pause"); cout << endl;

	DO_AND_PRINT(tc6 = std::move(tc2));
	system("pause"); cout << endl;

	DO_AND_PRINT(TC& tc7 = tc6);
	system("pause"); cout << endl;

	DO_AND_PRINT(TC&& tc8 = TC(4));
	system("pause"); cout << endl;

	DO_AND_PRINT(tc8 = TC(4));
	system("pause"); cout << endl;

	DO_AND_PRINT(TC&& tc9 = std::move(tc7));
	system("pause"); cout << endl;

	DO_AND_PRINT(tc9 = std::move(tc8));
	system("pause"); cout << endl;
#undef DO_AND_PRINT
	}

	return 0;
}

