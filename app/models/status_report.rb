class StatusReport < ActiveRecord::Base
	belongs_to :outage_type
	
	validates :name, :presence => true
	validates :outage_type_id, :presence => true,
				   :numericality => { :only_integer => true }
	validates :start_time, :presence => true,
			       :numericality => { :only_integer => true, :less_than => 2400 }
	validates :affected_groups, :presence => true
	validates :affected_services, :presence => true
	validates :description, :presence => true
	validates :created_by, :presence => true
end
