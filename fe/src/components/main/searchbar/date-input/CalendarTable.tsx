import styled from "styled-components";

interface TableType {
  columns: string[];
  data: number[][];
  mon: number;
}

const CalendarTable = ({ columns, data, mon }: TableType) => {
  return (
    <StyldTable>
      <thead>
        <tr>
          {columns.map((column) => (
            <StyldDay key={`${mon}${column}`}>{column}</StyldDay>
          ))}
        </tr>
      </thead>
      <tbody>
        {data.map((row, i) => (
          <tr key={"tr" + i}>
            {row.map((item, j) =>
              item ? (
                <StyldTh key={`_${j}${i}${mon}`}>{item}</StyldTh>
              ) : (
                <StyldTh key={`_${j}${i}${mon}`}></StyldTh>
              )
            )}
          </tr>
        ))}
      </tbody>
    </StyldTable>
  );
};
export default CalendarTable;

const StyldTable = styled.table``;

const StyldDay = styled.th`
  color: ${({ theme }) => theme.color.Gray4};
`;

const StyldTh = styled.th`
  width: 4rem;
  height: 4rem;
`;
