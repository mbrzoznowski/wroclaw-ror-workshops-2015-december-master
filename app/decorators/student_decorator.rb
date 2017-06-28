class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
    sum = 0.00
    if subject_item.subject_item_notes.present?
      amount = subject_item.subject_item_notes.size
      subject_item.subject_item_notes.each do |x|
        sum += x.value
      end
      result = "%.2f" % (sum / amount)
    else
      sum = "%.2f" % sum
    end 
  end
end
