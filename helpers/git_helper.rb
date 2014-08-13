module GitHelper
  def last_commit_message
    @last_commit_message ||= `git log -1 --pretty=%B`
  end
end
