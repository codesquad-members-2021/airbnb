import styled from 'styled-components';
import { ICustomProps } from '../../../../../util/types';

const YearMonth = ({ children } : ICustomProps ) => {
  return <YearMonthLayout>{children}</YearMonthLayout>;
};

export default YearMonth;

// --- Styled Components ---
const YearMonthLayout = styled.div`
  display: flex;
  justify-content: center;
  align-items: center;
`;
