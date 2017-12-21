Given("have a before hook in place") do
  expect(@users).to be_kind_of(Array)
end

Then("I can validate the information in the before hook") do
  expect(@users[0]).to eq('Dave')
  expect(@users[1]).to eq('susan')
  expect(@users[2]).to eq('Jamie')
  expect(@environment).to eq('development')
end
