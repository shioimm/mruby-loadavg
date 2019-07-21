class Loadavg
  attr_reader :avg_over_1min,
              :avg_over_5min,
              :avg_over_15min,
              :runnable_tasks,
              :existing_tasks,
              :last_created_pid

  def initialize
    f = File.open('/proc/loadavg', 'r')
    @avg_over_1min,
    @avg_over_5min,
    @avg_over_15min,
    @runnable_tasks,
    @existing_tasks,
    @last_created_pid = f.read.split
    f.close
  end
end
