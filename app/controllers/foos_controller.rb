class FoosController < ApplicationController

  def index
    @foos = Foo.all
  end

  def new
    @foo = Foo.new
  end

  def edit
    @foo = Foo.find(params[:id])
  end

  def create
    @foo = Foo.new(foo_params)
    if @foo.save
      redirect_to foos_path, notice: 'Your Foo has been saved'
    else
      flash.now[:alert] = 'Something went wrong!'
    end
  end

  def update
    @foo = Foo.find(params[:id])
    if @foo.update(foo_params)
      redirect_to foos_path, notice: 'Your Foo has been saved'
    else
      flash.now[:alert] = 'Something went wrong!'
    end
  end

  private

  def foo_params
    params.require(:foo).permit(:title, :description)
  end

end