class Table

  attr_accessor :ws

  include Enumerable

  def initialize(ws)
    @ws = ws
  end

  def getTableMatrix()
    matrix = (1..@ws. _rows).map { |row| (1..@ws.num_cols).map { |col| @ws[row, col] } }
  end

  def row(index)
    array = (1..@ws.num_cols).map { |col| @ws[index, col] }
  end

  def each
    getTableMatrix.each { |row| row.each { |col| yield col } }
  end

  def [](index)
    begin
      array = (0...@ws.num_rows).map { |i| @ws.list[i][index] }
      Column.new(array, index, self)
    rescue => error
      p "There is no column named #{index}"
      nil
    end
  end

  def []=(row, column, value)
    @ws.list[column][row] = value
  end

end

class Column

  def initialize(values, key, table)
    @values, @key, @table = values, key, table
  end

  def [](index)
    @values[index]
  end

  def []=(index, value)
    @table.[]=(@key, index, value)
  end

end
