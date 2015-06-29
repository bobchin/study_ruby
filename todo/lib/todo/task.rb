# coding: utf-8

require 'active_record'

module Todo

  # tasksテーブルを表現するモデル
  # @author bobchin
  class Task < ActiveRecord::Base
    NOT_YET = 0 # タスク未完了
    DONE    = 1 # タスク完了
    PENDING = 2 # タスク保留中

    STATUS = {
      'NOT_YET' => NOT_YET,
      'DONE'    => DONE,
      'PENDING' => PENDING
    }.freeze

    scope :status_is, ->(status) { where(status: status) }

    # validator
    # presence: 空白のみを許可しない
    validates :name,    presence: true, length: {maximum: 140}
    validates :content, presence: true
    validates :status,  numericality: true, inclusion: {in: STATUS.values}

    def status_name
      STATUS.key(self.status)
    end
  end

end
