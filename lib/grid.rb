class Grid
  def initialize()
    @grid = {
      A: [nil, nil, nil],
      B: [nil, nil, nil],
      C: [nil, nil, nil]
    }
  end

  def set_cell_value(cell_name, value)
    @grid[cell_name] = value
  end
end
