# conding: utf-8

module Todo

  # コマンドラインベースの処理をするクラス
  # @author bobchin
  class Command

    def execute
      DB.prepare
    end

    def create_task(name, content)
      # タスクの作成時の status はデフォルト値が使われNOT_YETとなる
      Task.create!(name: name, content: content).reload
    end

  end

end
