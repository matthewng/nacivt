class Admin::ClubsController < Admin::ApplicationController
  before_action :set_club, only: [:show, :edit, :update, :destroy]

  # GET /admin/clubs
  # GET /admin/clubs.json
  def index
    @clubs = Club.all
  end

  # GET /admin/clubs/1
  # GET /admin/clubs/1.json
  def show
  end

  # GET /admin/clubs/new
  def new
    @club = Club.new
  end

  # GET /admin/clubs/1/edit
  def edit
  end

  # POST /admin/clubs
  # POST /admin/clubs.json
  def create
    @club = Club.new(club_params)

    respond_to do |format|
      if @club.save
        format.html { redirect_to [:admin, @club], notice: 'Club was successfully created.' }
        format.json { render :show, status: :created, location: @club }
      else
        format.html { render :new }
        format.json { render json: @club.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/clubs/1
  # PATCH/PUT /admin/clubs/1.json
  def update
    respond_to do |format|
      if @club.update(club_params)
        format.html { redirect_to [:admin, @club], notice: 'Club was successfully updated.' }
        format.json { render :show, status: :ok, location: @club }
      else
        format.html { render :edit }
        format.json { render json: @club.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/clubs/1
  # DELETE /admin/clubs/1.json
  def destroy
    @club.destroy
    respond_to do |format|
      format.html { redirect_to admin_clubs_url, notice: 'Club was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_club
      @club = Club.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def club_params
      params.require(:club).permit(:name, user_ids:[])
    end
end
