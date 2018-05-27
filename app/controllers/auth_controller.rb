class AuthController < ApplicationController
before_action :set_auth, only: [:show, :edit, :update, :destroy]

  # GET /books
  # GET /books.json
  def index
    @auths = Auth.all
  end



  # GET /books/1
  # GET /books/1.json
  def show

  end

  # GET /books/new
  def new
    @auth = Auth.new
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books
  # POST /books.json
  def create
    @auth = Auth.new(book_params)

    respond_to do |format|
      if @auth.save
        format.html { redirect_to @auth, notice: 'Автор успішно доданий' }
        format.json { render :show, status: :created, location: @auth }
      else
        format.html { render :new }
        format.json { render json: @auth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @auth, notice: 'Автор успішно змінений' }
        format.json { render :show, status: :ok, location: @auth }
      else
        format.html { render :edit }
        format.json { render json: @auth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to auths_url, notice: 'Книга успішно видалена' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Auth.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:auth).permit(:auth, :book)
    end
end
