import styled from 'styled-components';
import { ICustomProps } from '../../util/types';

const Subject = ({ children }: ICustomProps) => (
  <SubjectLayout>{children}</SubjectLayout>
);

export default Subject;

// --- Styled Components ---
const SubjectLayout = styled.p`
  font-size: ${({ theme }) => theme.fontSize.SUBJECT};
  font-weight: ${({ theme }) => theme.fontWeight.bold};
`;
