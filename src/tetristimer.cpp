#include "tetristimer.hpp"
#include <math.h>

uintmax_t next_every_activation;
TetrisTimer::TetrisTimer(uintmax_t every_interval)
{
    init_time = getSystemUseconds();
    my_every_interval = every_interval;
    next_every_activation = 0;
}

uintmax_t TetrisTimer::getSystemUseconds()
{
    struct timeval current_time;
    gettimeofday(&current_time, nullptr);
    return current_time.tv_sec * 1e6 + current_time.tv_usec;
}

void TetrisTimer::reset()
{
    init_time = getSystemUseconds();
}

uintmax_t TetrisTimer::update()
{
    elapsed_time = getSystemUseconds() - init_time;
    return elapsed_time;
}

uintmax_t TetrisTimer::getInitUseconds()
{
    return init_time ;
}

uintmax_t TetrisTimer::getElapsedUseconds()
{
    return elapsed_time;
}

void TetrisTimer::setEveryInterval(uintmax_t interval)
{
    update();
    
    if(interval == 0) interval = 1; //leads to segmentation fault if interval == 0.

    my_every_interval = interval;
    next_every_activation = elapsed_time + my_every_interval;
}

uintmax_t TetrisTimer::getEveryInterval()
{
    return my_every_interval;
}


bool TetrisTimer::every()
{
    if(elapsed_time >= next_every_activation)
    {
        next_every_activation += my_every_interval;
        return true;
    }
    else return false;
}
