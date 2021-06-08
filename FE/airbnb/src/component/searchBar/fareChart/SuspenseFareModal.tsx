import styled from "styled-components";

function SuspenseFareModal() {
  return <Modal>...Loading</Modal>;
}

export default SuspenseFareModal;

const Modal = styled.div`
  ${({ theme }) => theme.modal}
  border: 1px solid #eee;
  right: 0;
  width: 458px;
  height: 330px;
  padding: 50px 60px;

  color: ${({ theme }) => theme.color.gray4};
  font-size: ${({ theme }) => theme.fontSize.xl};
  text-align: center;
  line-height: 210px;
`;
