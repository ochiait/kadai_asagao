class CalendarItemsController < ApplicationController
    # 予定一覧
    def index
      if params[:category]
        @items = CalendarItem.where('category')
      else
        @items = CalendarItem.order("start_time")
      end
    end

    # 詳細
    def show
      @item = CalendarItem.find(params[:id])
    end

  # 新規作成フォーム
  def new
    @item = CalendarItem.new
  end

  # 更新フォーム
  def edit
    @item = CalendarItem.find(params[:id])
  end

  # 会員の新規登録
  def create
    @item = CalendarItem.new(params[:calendar_item])
    if @item.save
      redirect_to @item, notice: "登録しました。"
    else
      render "new"
    end
  end

  # 情報の更新
  def update
    @item = CalendarItem.find(params[:id])
    @item.assign_attributes(params[:calendar_item])
    if @item.save
      redirect_to @item, notice: "情報を更新しました。"
    else
      render "edit"
    end
  end

  # 削除
  def destroy
    @item = CalendarItem.find(params[:id])
    @item.destroy
  end
end
