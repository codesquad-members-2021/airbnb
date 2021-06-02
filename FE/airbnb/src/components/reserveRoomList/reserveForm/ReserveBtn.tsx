import styled from 'styled-components';

interface Props {
  className: string;
}

const ReserveBtn = ({ className }: Props) => {
  return <StyledReserveBtn className={className}>예약하기</StyledReserveBtn>;
};

export default ReserveBtn;

const StyledReserveBtn = styled.button`
  display: flex;
  align-items: center;
  justify-content: center;
  width: 100%;
  height: 55px;
  border: none;
  border-radius: 10px;
  background-color: ${({ theme }) => theme.colors.black};
  color: ${({ theme }) => theme.colors.white};
  font-weight: 700;
`;
