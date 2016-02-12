class List < ActiveRecord::Base

  has_many :tasks

  def complete_all_tasks!
    tasks.each do |task|
      task.update(complete: true)
    end
  end

  def snooze_all_tasks!
    tasks.each do |task|
      task.snooze_hour!

      # tasks.each { |task| task.snooze_hour!}
    end
  end

  def total_duration
    total = 0
    tasks.each do |task|
      total += task.duration
    end
    return total

    # tasks.sum(:duration)
  end

  def incomplete_tasks
    array_of_tasks = []
    tasks.each do |task|
      if !task.complete
        array_of_tasks << task
      end
    end
    return array_of_tasks
    # tasks.where(complete: false)
  end

  def favorite_tasks
    array_of_tasks = []
    tasks.each do |task|
      if task.favorite
        array_of_tasks << task
      end
    end
    return array_of_tasks

    # tasks.where(favorite: true)
  end
  
end
