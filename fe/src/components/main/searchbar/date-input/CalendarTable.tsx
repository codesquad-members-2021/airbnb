interface TableType {
  columns: string[];
  data: number[][];
  mon: number;
}

const CalendarTable = ({ columns, data, mon }: TableType) => {
  return (
    <table>
      <thead>
        <tr>
          {columns.map((column) => (
            <th key={`${mon}${column}`}>{column}</th>
          ))}
        </tr>
      </thead>
      <tbody>
        {data.map((row, i) => (
          <tr key={"tr"+  i}>
            {row.map((item, j) =>
              item ? (
                <th key={`_${j}${i}${mon}`}>{item}</th>
              ) : (
                <th key={`_${j}${i}${mon}`}></th>
              )
            )}
          </tr>
        ))}
      </tbody>
    </table>
  );
};
export default CalendarTable;
