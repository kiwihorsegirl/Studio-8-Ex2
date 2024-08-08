public class SpreadSheet {
 
  private final int _CELL_WIDTH;
  private final int _CELL_HEIGHT;
  private final int _INITIAL_TEXT_SIZE;

  
  private ArrayList<AbstractCell> _cellList;
  private int _numColumns;
  private int _numRows;
  
  public SpreadSheet(int numColumns, int numRows) {
    

    
    _CELL_WIDTH = 300;
    _CELL_HEIGHT = 100;
    _INITIAL_TEXT_SIZE = 50;
    
    _cellList = new ArrayList<AbstractCell>();
    _numColumns = numColumns;
     _numRows = numRows;
    
  }
  private boolean checkPosition(int col, int row) {
    
    //if (col >= 1 && col <= _numColumns && row >= 1 && row <= _numRows) {
    //  return true;
    //} else {
    // return false; 
    //}
    
    return(col >= 0 && col < _numColumns && row >= 0 && row < _numRows);
  }
  
  public void addTextCell(int col, int row, String text) {
    if (checkPosition(col, row)) {
      _cellList.add(new TextCell(col * _CELL_WIDTH, row * _CELL_HEIGHT, _CELL_WIDTH, _CELL_HEIGHT, 
            _INITIAL_TEXT_SIZE, text));
    } else {
     System.out.println("Text cell row/col not valid"); 
    }
  }
  
  
  public void addNumericCell(int col, int row, float value, int numDP) {
    if (checkPosition(col, row)) {
      _cellList.add(new NumericCell(col * _CELL_WIDTH, row * _CELL_HEIGHT, _CELL_WIDTH, _CELL_HEIGHT, 
            _INITIAL_TEXT_SIZE, value, numDP));
    } else {
     System.out.println("Numeric cell row/col not valid"); 
    }
  }
  
  public void drawSpreadSheet() {
    for (AbstractCell a : _cellList) {
      a.drawCell();
    }
  }
  
  public void changeTextSize (int amount) {
    for (AbstractCell a : _cellList) {
       a.changeTextSize(amount);
    }
  }
  
  public void loadFile(String filename) {
    
  }
  
  
}
