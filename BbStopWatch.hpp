#ifndef BBSTOPWATCH_HPP_GUARD
#define BBSTOPWATCH_HPP_GUARD

#include <chrono>

class BbStopWatch
{
public:
	enum class TimeUOM
	{
		hours,
		minutes,
		seconds,
		milliseconds,
		microseconds,
		nanoseconds
	};

	typedef std::chrono::high_resolution_clock                          hr_clock;
	typedef std::chrono::time_point<std::chrono::high_resolution_clock> hr_t_point;

private:
	hr_t_point startTime;
	hr_t_point splitTime;
	hr_t_point stopTime;
	bool isRunning = false;
	TimeUOM period;

	double get_duration(const hr_t_point& e, const hr_t_point& s, const TimeUOM& p) const;

public:
	explicit BbStopWatch(TimeUOM p)
		: period(p) { }

	void start();
	void stop();
	void reset();
	void restart();
	double split();
	double get_total_running_time() const;
	void change_uom(const TimeUOM& newPeriod) { period = newPeriod; }
	bool is_running() const { return isRunning; }
};

#endif // BBSTOPWATCH_HPP_GUARD
