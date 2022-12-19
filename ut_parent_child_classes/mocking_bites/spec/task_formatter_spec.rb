require 'task_formatter'

describe TaskFormatter do
  it "constructs" do
    task = double :task
    formatted_task = TaskFormatter.new(task)
    expect(formatted_task).to be
  end

  context "when the task is incomplete" do
    it "#formats the string with '- [ ]' prepended" do
      task = double :task, title: "Clean the dishes", complete?: false
      formatted_task = TaskFormatter.new(task)
      expect(formatted_task.format).to eq "- [ ] Clean the dishes"
    end
  end

  context "when the task is complete" do
    it "#formats the string with '- [x]' prepended" do
      task = double :task, title: "Clean the dishes", complete?: true
      formatted_task = TaskFormatter.new(task)
      expect(formatted_task.format).to eq "- [x] Clean the dishes"
    end
  end
end