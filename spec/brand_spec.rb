require "spec helper"

describe(Brand) do
  it{should have_and_belong_to_many(:stores)}
end
