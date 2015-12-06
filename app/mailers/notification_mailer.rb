class NotificationMailer < ActionMailer::Base
  default from: "no-reply@supperclvb.com"

  def comment_added
  	mail(to: "justdizon71@gmail.com",
  		subject: "A comment has been added to your place")
  end
end
