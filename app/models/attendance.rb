class Attendance < ApplicationRecord

  STATUS_VALUES = ['出勤', '退勤']

  validates :status, inclusion: { in: STATUS_VALUES }
end
