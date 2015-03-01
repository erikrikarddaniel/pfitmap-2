class HmmProfilesController < ApplicationController
  before_action :set_hmm_profile, only: [:show, :edit, :update, :destroy]

  # GET /hmm_profiles
  # GET /hmm_profiles.json
  def index
    @hmm_profiles = HmmProfile.all
  end

  # GET /hmm_profiles/1
  # GET /hmm_profiles/1.json
  def show
  end

  # GET /hmm_profiles/new
  def new
    @hmm_profile = HmmProfile.new
  end

  # GET /hmm_profiles/1/edit
  def edit
  end

  # POST /hmm_profiles
  # POST /hmm_profiles.json
  def create
    @hmm_profile = HmmProfile.new(hmm_profile_params)

    respond_to do |format|
      if @hmm_profile.save
        format.html { redirect_to @hmm_profile, notice: 'Hmm profile was successfully created.' }
        format.json { render :show, status: :created, location: @hmm_profile }
      else
        format.html { render :new }
        format.json { render json: @hmm_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hmm_profiles/1
  # PATCH/PUT /hmm_profiles/1.json
  def update
    respond_to do |format|
      if @hmm_profile.update(hmm_profile_params)
        format.html { redirect_to @hmm_profile, notice: 'Hmm profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @hmm_profile }
      else
        format.html { render :edit }
        format.json { render json: @hmm_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hmm_profiles/1
  # DELETE /hmm_profiles/1.json
  def destroy
    @hmm_profile.destroy
    respond_to do |format|
      format.html { redirect_to hmm_profiles_url, notice: 'Hmm profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hmm_profile
      @hmm_profile = HmmProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hmm_profile_params
      params.require(:hmm_profile).permit(:name, :rank, :desc, :hmm_profile_id)
    end
end
