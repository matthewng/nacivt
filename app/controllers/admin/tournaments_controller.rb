class Admin::TournamentsController < Admin::ApplicationController
  before_action :set_admin_tournament, only: [:show, :edit, :update, :destroy]

  # GET /admin/tournaments
  # GET /admin/tournaments.json
  def index
    @admin_tournaments = Tournament.all
  end

  # GET /admin/tournaments/1
  # GET /admin/tournaments/1.json
  def show
  end

  # GET /admin/tournaments/new
  def new
    @admin_tournament = Tournament.new
  end

  # GET /admin/tournaments/1/edit
  def edit
  end

  # POST /admin/tournaments
  # POST /admin/tournaments.json
  def create
    @admin_tournament = Tournament.new(admin_tournament_params)

    respond_to do |format|
      if @admin_tournament.save
        format.html { redirect_to @admin_tournament, notice: 'Tournament was successfully created.' }
        format.json { render :show, status: :created, location: @admin_tournament }
      else
        format.html { render :new }
        format.json { render json: @admin_tournament.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/tournaments/1
  # PATCH/PUT /admin/tournaments/1.json
  def update
    respond_to do |format|
      if @admin_tournament.update(admin_tournament_params)
        format.html { redirect_to @admin_tournament, notice: 'Tournament was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_tournament }
      else
        format.html { render :edit }
        format.json { render json: @admin_tournament.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/tournaments/1
  # DELETE /admin/tournaments/1.json
  def destroy
    @admin_tournament.destroy
    respond_to do |format|
      format.html { redirect_to admin_tournaments_url, notice: 'Tournament was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_tournament
      @admin_tournament = Tournament.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_tournament_params
      params.fetch(:admin_tournament, {})
    end
end
