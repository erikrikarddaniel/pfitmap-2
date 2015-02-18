json.array!(@proteins) do |protein|
  json.extract! protein, :id, :protfamily, :protclass, :protsubclass, :protgroup, :protsubgroup, :protsubsubgroup
  json.url protein_url(protein, format: :json)
end
