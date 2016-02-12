require 'rails_helper'

RSpec.describe List, :type => :model do
  
  describe '#complete_all_tasks!' do
    it 'should mark all tasks as complete' do
      list = List.create(name: "groceries")
      Task.create(name: "oranges", complete: false, list_id: list.id)
      Task.create(name: "apples", complete: false, list_id: list.id)
      list.complete_all_tasks!
      list.tasks.each do |task|
        expect(task.complete).to eq(true)
      end 
    end
  end


  # describe '#complete_all_tasks!' do
  #   it 'hould mark all tasks as complete' do
  #     list = List.create(name: "groceries")
  #     ["oranges", "apples"].each do |task_name|
  #       Task.create(name: task_name, complete: false, list_id: list.id)
  #     end
  #     list.complete_all_tasks!
  #     list.tasks.each do |task|
  #       expect(task.complete).to eq(true)
  #     end 
  #   end
  # end

    describe '#snooze_all_tasks!' do
      it 'should delay all tasks deadlines by one hour' do
        list = List.create(name: "groceries")
          time = Time.now
            Task.create(name: "oranges", list_id: list.id, deadline: time)
          end

          list.snooze_all_tasks!

            list.tasks.each do |task|

              expect(task.deadline).to eq(time +1)
            end
        end
    end

    
 

    describe '#total_duration' do
      it 'should show the total time of all the tasks' do
       list = List.create(name: "groceries")
        Task.create(name: "oranges", list_id: list.id, duration: 10)
        Task.create(name: "apples", list_id: list.id, duration: 20)
        # [["clean", 10], ["call", 20]].each do |task_name, duration|
        # Task.create(name: task_name, duration: duration, list_id: list.id)
      # end

                expect(list.total_duration).to eq (30)

      end
    end

    describe '#incomplete_tasks' do
      it 'should list the incomplete tasks' do
      list = List.create(name: "groceries")
      [["oranges", false], ["apples", false]].each do |task_name, complete_status|
        Task.create(name: task_name, complete: complete_status, list_id: list.id)
      end
      expect(list.incomplete_tasks.length).to eq(2)
      end
    end
    


    describe '#favorite_tasks' do
      it 'should list the favorite tasks' do
      list = List.create(name: "groceries")
      [["oranges", true], ["apples", true]].each do |task_name, favorite_status|
        Task.create(name: task_name, favorite: favorite_status, list_id: list.id)
      end
      expect(list.favorite_tasks.length).to eq(2)
      end
    end

  end