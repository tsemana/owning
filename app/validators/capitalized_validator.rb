class CapitalizedValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A[A-Z]/
      record.errors.add(attribute, "must start with capital letter")
    end
  end
end
