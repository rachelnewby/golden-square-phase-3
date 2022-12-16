require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  # Unit test `#all` and `#all_complete?` behaviour
  context "when task doubles are added to TaskList" do
    it "#all returns" do
      task_list = TaskList.new
      task_1 = double :task
      task_2 = double :task
      task_list.add(task_1)
      task_list.add(task_2)
      expect(task_list.all).to eq [task_1, task_2]
    end
  end

  context "when task doubles are incomplete" do
    it "#all_complete? returns false"  do
      task_list = TaskList.new
      task_1 = double :task, complete?: false
      task_2 = double :task, complete?: false
      task_list.add(task_1)
      task_list.add(task_2)
      expect(task_list.all_complete?).to eq false
    end
  end

  context "when some task doubles are incomplete" do
    it "#all_complete? returns false"  do
      task_list = TaskList.new
      task_1 = double :task, complete?: false
      task_2 = double :task, complete?: true
      task_list.add(task_1)
      task_list.add(task_2)
      expect(task_list.all_complete?).to eq false
    end
  end

  context "when all task doubles are complete" do
    it "#all_complete? returns true"  do
      task_list = TaskList.new
      task_1 = double :task, complete?: true
      task_2 = double :task, complete?: true
      task_list.add(task_1)
      task_list.add(task_2)
      expect(task_list.all_complete?).to eq true
    end
  end
end
