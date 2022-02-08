json.extract! evidence, :id, :title, :order, :status, :distributor, :description, :content, :created_at, :updated_at
json.url evidence_url(evidence, format: :json)
json.content evidence.content.to_s
