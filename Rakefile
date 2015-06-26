# -*- coding: utf-8 -*-
require 'rake/clean'
CLEAN.include('meals/*')
CLOBBER.include('reports/*')

TXT_DIR    = "#{Dir.pwd}/meals/"
OUTPUT_DIR = "#{Dir.pwd}/reports/"
OUTPUT_FILE = OUTPUT_DIR + "report_#{Time.now.strftime('%Y%m%d')}.txt"

FILE_EXT = '.txt'
MEALS = [
  {name: 'breakfast', label: '朝食'},
  {name: 'lunch',     label: '昼食'},
  {name: 'dinner',    label: '夜食'}
]
TXT_FILES = MEALS.map {|m| TXT_DIR + m[:name] + FILE_EXT}

task :default => :daily_report

desc '１日の食事記録を作成する'
task :daily_report => [:check, :report] do
  puts '１日の食事記録を作成しました'
end

desc '食事記録ファイルの確認'
task :check => TXT_FILES do
end

TXT_FILES.each do |file_name|
  file file_name do
    puts "#{file_name}がありません"
    puts "#{file_name}を作成します"
    sh "type nul > #{file_name}"
  end
end

desc '食事レポート'
task :report do
  date_str = Time.now.strftime('%Y/%m/%d')
  output_str = "#{date_str}の食事記録\n\n"
  
  MEALS.each do |meal|
    file_name = meal[:name] + FILE_EXT
    full_path = TXT_DIR + file_name
    description = <<DESC
#{meal[:label]}
#{File.read(full_path, :encoding => Encoding::UTF_8)}
DESC
    output_str += description
  end
  
  output_file = OUTPUT_DIR + "report_#{Time.now.strftime('%Y%m%d')}.txt"
  File.open(output_file, 'w') {|f|
    f.write output_str
  }
end
