require 'rails_helper'

RSpec.describe Task, :type => :model do

  describe '#toggle_complete!' do
    it 'should make a task complete that is incomplete' do
      task = Task.create(complete: false)
      task.toggle_complete!
      expect(task.complete).to eq(true)
    end

    it 'should make a task incomplete that is complete' do
      task = Task.create(complete: true)
      task.toggle_complete!
      expect(task.complete).to eq(false)
    end
  end


  describe '#toggle_favorite!' do
    it 'should make a task favorited' do
      task = Task.create(favorite: false)
      favorite_status = task.toggle_favorite!
      expect(favorite_status).to eq(true)
    end

     it 'should make a task unfavorited' do
      task = Task.create(favorite: true)
      task.toggle_favorite!
      expect(task.favorite).to eq(false)
    end
  end

  describe '#overdue?' do
    it 'should return if deadline of task has passed' do
      task = Task.create(deadline: 1.day.ago)
      expect(task.overdue?).to eq(true) 
    end
  end

  describe '#overdue?' do
    it 'should return if deadline of task has not passed' do
      task = Task.create(deadline: 1.day.from_now)
      expect(task.overdue?).to eq(false) 
    end
  end

  describe '#increment_priority!' do
    it 'should increase the priority, if less than 10, by one' do
      task = Task.create(priority: 5)
      task.increment_priority!
      expect(task.priority).to eq(6)
    end
  end

# describe '#increment_priority!' do
#   context 'when priority is not 10' do
#     it 'should increment priority by 1' do
#       task = Task.create(priority: 5)
#       task.increment_priority!
#       expect(task.priority).to eq(6)
#       end
#     end

  #   context 'when priority is 10' do
  #     it 'should not increment priority' do
  #       task = Task.create(priority: 5)
  #       task.increment_priority!
  #       expect(task.priority).to eq(6)
  #     end
  #   end
  # end


  describe '#decrement_priority!' do
    it 'should decrease the priority, if less than 10, by one' do
      task = Task.create(priority: 5)
      task.decrement_priority!
      expect(task.priority).to eq(4)
    end
  end

  describe '#snooze_hour!' do
    it 'should add one hour to the deadline' do
      current_time = Time.now
      task = Task.create(deadline: current_time)
      task.snooze_hour!
      expect(task.deadline).to eq(current_time + 1.hour)
    end
  end


  # describe '#snooze_hour!' do
  #   it 'should add one hour to the deadline' do
  #     task = Task.create(deadline: Time.new(1912,1,1))
  #     task.snooze_hour!
  #     expect(task.deadline).to eq(Time.new(1912,1,1) + 1.hour)
  #   end
  # end

end
