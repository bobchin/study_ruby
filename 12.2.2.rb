# -*- coding: utf-8 -*-
#
# == あいさつをするためのクラス
#
# Author:: bobchin
# Version:: 0.0.1
# License:: Ruby License
#
class Poke
  # 読者名
  attr_accessor :reader
  
  # 著者名
  attr_reader :authors
  
  #
  # このクラスのバージョン
  #
  VAERSION = '0.0.1'
  
  #
  # ===initilizer
  # initilize instance variables
  #
  def initilize(user_name = 'you')
    @reader = user_name
    @authors = %w(sugamasao takkanm hibariya ryopeko)
  end
  
  #
  # ===<em>@sugamasao</em>にあいさつするためのメソッド
  # インスタンス化しなくても使えるので<b>気軽に</b>あいさつできる
  #
  def self.sugamasao
    p 'Hey @sugamasao!'
  end
  
  #
  # ===<em>@takkanm</em>が誰かにあいさつするためのメソッド
  # 対象を引数で指定する
  # インスタンス化して使用する
  #
  def takkanm(screen_name = 'すが')
    p "#{screen_name}さん．．．"
  end

  #
  # ===@hibariyaにあいさつするためのメソッド
  # - リスト１
  # - リスト２
  # - リスト３
  #
  def hibariya
    p '@hibariya'
    p bye
  end

  private
  #
  # === さよならする
  #
  def bye
    'Bye'
  end

end
