class Grid
  def initialize()
    @grid = {
      A1: nil, A2: nil, A3: nil,
      B1: nil, B2: nil, B3: nil,
      C1: nil, C2: nil, C3: nil
    }
  end

  def set_cell_value(cell_name, value)
    @grid[cell_name] = value
  end
end
