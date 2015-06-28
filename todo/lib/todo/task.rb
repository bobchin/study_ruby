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
  end

end
