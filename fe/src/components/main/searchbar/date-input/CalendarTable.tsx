interface TableType {
  columns: string[];
  data: number[][];
}

const CalendarTable = ({ columns, data }: TableType) => {
  return (
    <table>
      <thead>
        <tr>
          {columns.map((column) => (
            <th key={column}>{column}</th>
          ))}
        </tr>
      </thead>
      <tbody>
        {data.map((row, i) => (
          <tr>
            {row.map((item, j) =>
              item ? (
                <th key={`_${j}${i}`}>{item}</th>
              ) : (
                <th key={`_${j}${i}`}></th>
              )
            )}
          </tr>
        ))}
      </tbody>
    </table>
  );
};
export default CalendarTable;
