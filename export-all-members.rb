# Set OCTOKIT_ACCESS_TOKEN to authenticate

require "octokit"

Octokit.auto_paginate = true
members = Octokit.org_members "w3f"

# Then, for example:

require "csv"

CSV.open("export-all.csv", "wb") do |csv|
  members.each do |m|
    csv << [m[:id], m[:login]] # etc
  end
end
