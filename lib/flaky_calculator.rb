class Flaky_Calculator
  def maybe_add(a, b)
    luck = rand()
    return a + b unless luck < 0.3
    "Oof! Better luck next time: #{luck}"
  end
end
