import styled from 'styled-components';
import { ICustomProps } from '../../../../../../util/types';

const YearMonth = ({ children, ...props } : ICustomProps ) => {
  return <YearMonthLayout {...props}>{children}</YearMonthLayout>;
};

export default YearMonth;

// --- Styled Components ---
const YearMonthLayout = styled.div`
  display: flex;
  justify-content: center;
  align-items: center;
  font-weight: ${({theme}) => theme.fontWeight.bold};
  font-size: ${({theme}) => theme.fontSize.L};
  margin-bottom: 24px;
`;
