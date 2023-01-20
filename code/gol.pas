-- Variables

var
  world: array of array of boolean;
  width, height, generation: integer;

-- Procedure to initialize the world

procedure initializeWorld(width, height: integer);
var
  x, y: integer;
begin
  setLength(world, width, height);
  for x := 0 to width - 1 do
  begin
    for y := 0 to height - 1 do
    begin
      world[x, y] := false;
    end;
  end;
end;

-- Procedure to set a cell to alive or dead

procedure setCell(x, y, value: integer);
begin
  if value = 0 then
    world[x, y] := false
  else
    world[x, y] := true;
end;

-- Procedure to get the number of alive neighbours for a cell

function getNumAliveNeighbours(x, y: integer): integer;
var
  i, j, count: integer;
begin
  count := 0;
  for i := -1 to 1 do
  begin
    for j := -1 to 1 do
    begin
      if (i <> 0) or (j <> 0) then
      begin
        if world[(x + i + width) mod width, (y + j + height) mod height] then
          inc(count);
      end;
    end;
  end;
  result := count;
end;

-- Procedure to generate the next generation

procedure generate;
var
  x, y, aliveNeighbours: integer;
begin
  for x := 0 to width - 1 do
  begin
    for y := 0 to height - 1 do
    begin
      aliveNeighbours := getNumAliveNeighbours(x, y);
      if world[x, y] then
      begin
        if (aliveNeighbours < 2) or (aliveNeighbours > 3) then
          world[x, y] := false;
      end
      else
      begin
        if aliveNeighbours = 3 then
          world[x, y] := true;
      end;
    end;
  end;
  inc(generation);
end;

-- Procedure to print the world

procedure printWorld;
var
  x, y: integer;
begin
  writeln('Generation: ', generation);
  for y := 0 to height - 1 do
  begin
    for x := 0 to width - 1 do
    begin
      if world[x, y] then
        write('O')
      else
        write(' ');
    end;
    writeln;
  end;
end;

-- Main program

begin
  width := 40;
  height := 20;
  generation := 0;
  initializeWorld(width, height);
  setCell(1, 2, 1);
  setCell(2, 2, 1);
  setCell(3, 2, 1);
  while true do
  begin
    printWorld;
    generate;
    sleep(200);
  end;
end.
