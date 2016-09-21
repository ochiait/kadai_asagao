class MembersController < ApplicationController
  # 会員一覧
  def index
    @members = Member.order("score DESC, number")
  end

  # 検索
  def search
    @members = Member.search(params[:q])
    render "index"
  end

  # 会員情報の詳細
  def show
    @member = Member.find(params[:id])
  end

  # 男性のみ表示
  def male
    @members = Member.where(gender: 0)
    render "index"
  end

  # 女性のみ表示
  def female
    @members = Member.where(gender: 1)
    render "index"
  end

  # 新規作成フォーム
  def new
    @member = Member.new(birthday: Date.new(1980, 1, 1))
  end

  # 更新フォーム
  def edit
    @member = Member.find(params[:id])
  end

  def create
  end

  def update
  end

  def destroy
  end
end
