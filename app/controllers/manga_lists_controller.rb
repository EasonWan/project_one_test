class MangaListsController < ApplicationController
  before_action :set_manga_list, only: [:show, :edit, :update, :destroy]

  # GET /manga_lists
  # GET /manga_lists.json
  def index
    @manga_lists = MangaList.all
  end

  # GET /manga_lists/1
  # GET /manga_lists/1.json
  def show
  end

  # GET /manga_lists/new
  def new
    @manga_list = MangaList.new
    
  end

  # GET /manga_lists/1/edit
  def edit
  end

  # POST /manga_lists
  # POST /manga_lists.json
  def create
    @manga_list = MangaList.new(manga_list_params)

    respond_to do |format|
      if @manga_list.save
        format.html { redirect_to @manga_list, notice: 'Manga list was successfully created.' }
        format.json { render :show, status: :created, location: @manga_list }
      else
        format.html { render :new }
        format.json { render json: @manga_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manga_lists/1
  # PATCH/PUT /manga_lists/1.json
  def update
    respond_to do |format|
      if @manga_list.update(manga_list_params)
        format.html { redirect_to @manga_list, notice: 'Manga list was successfully updated.' }
        format.json { render :show, status: :ok, location: @manga_list }
      else
        format.html { render :edit }
        format.json { render json: @manga_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manga_lists/1
  # DELETE /manga_lists/1.json
  def destroy
    @manga_list.destroy
    respond_to do |format|
      format.html { redirect_to manga_lists_url, notice: 'Manga list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manga_list
      @manga_list = MangaList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def manga_list_params
      params.require(:manga_list).permit(:name)
    end
end
