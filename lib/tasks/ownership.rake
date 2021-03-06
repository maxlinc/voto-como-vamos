namespace :ownership do
  desc 'Send revindication request to all candidates'
  task :send_requests, [:head, :tail] => :environment do |t, args|
    Ownership.send_revindication_to_some_candidates(args[:head], args[:tail])
  end
end
