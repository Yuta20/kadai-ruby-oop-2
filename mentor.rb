# メンターの情報を管理するクラスを作成して、インスタンスを生成した後に、仕事内容を表示するプログラムを作成してください。

# 1. Mentorクラスの定義
  #・以下のインスタンス変数を Mentor クラスに持たせてください：
    # name（メンター名）
  #・initialize の処理を定義してください：
    # 名前のインスタンス変数を初期化できるようにしてください
  #・以下のインスタンスメソッドを Mentor クラスに持たせてください：
    # job（仕事を紹介する）
    # インスタンス変数の値を使って ○○です。私は現役のITプロフェッショナルです。 と表示するメソッドにしてください
# 2. RailsMentorクラスの定義
  #・Mentor クラスを継承してください
  #・job メソッドをオーバーライドしてください。
    # インスタンス変数の値を使って ○○です。私はRubyとRailsでWebアプリケーションを作ります。 と表示するメソッドにしてください
# 3. インスタンスの生成
  #・煌木（変数名：kirameki）という名前を持つ Mentor クラスのインスタンスを生成してください。initializeで名前を初期化してください
  #・赤出（変数名：akaide）という名前を持つ RailsMentor クラスのインスタンスを生成してください。initializeで名前を初期化してください
# 4. jobの呼び出し
  #・kiramekiとakaideの job を呼び出して、仕事内容を表示してください。
# 出力結果
  # 煌木です。私は現役のITプロフェッショナルです。
  # 赤出です。私はRubyとRailsでWebアプリケーションを作ります。
  

class Mentor
  attr_accessor :name

  def initialize(name)
    self.name = name
  end

  def job
    puts "#{self.name}です。私は現役のITプロフェッショナルです。"
  end
end

class RailsMentor < Mentor
  def job
    puts "#{self.name}です。私はRubyとRailsでWebアプリケーションを作ります。"
  end
end

kirameki = Mentor.new("煌木")
akaide = RailsMentor.new("赤出")

kirameki.job
akaide.job