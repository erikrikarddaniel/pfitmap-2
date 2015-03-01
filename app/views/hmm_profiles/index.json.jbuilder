json.array!(@hmm_profiles) do |hmm_profile|
  json.extract! hmm_profile, :id, :name, :rank, :desc, :hmm_profile_id
  json.url hmm_profile_url(hmm_profile, format: :json)
end
