import styled from 'styled-components';
import { ICustomProps } from "../../common/types";

const Subject = ( { children } : ICustomProps ) => <StyledSubject>{children}</StyledSubject>

export default Subject;

// --- Styled Components ---
const StyledSubject = styled.p`
  font-size: ${({theme}) => theme.fontSize.SUBJECT};
  font-weight: ${({theme}) => theme.fontWeight.bold};
`;
