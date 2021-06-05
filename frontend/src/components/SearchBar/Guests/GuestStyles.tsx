import styled from "styled-components";

const ModalLayout = styled.div`
  position: absolute; 
  top: 100%;
  width: 30rem;
  right: 0;
  z-index: 1;
  overflow: hidden;
  margin-top: 1.2rem;
  background: #ffffff;
  box-shadow: rgb(0 0 0 / 20%) 0px 6px 20px;
  border-radius: 40px;
  display: flex;
  align-items: center;
  flex-direction: column;

  .guest-container {
    width: 80%;
    margin: 2rem;

    .guest-type {
      display: flex;
      margin: 1.5rem 0;
      padding-bottom: 1.5rem;
      &:not(:last-child){
        border-bottom: 1px solid #aeabab62;
      }
      &:last-child {
        padding-bottom: 0;
      }

      & > div {
        width: 50%;
        & > button {
          background: transparent;
          border: none;
          cursor: pointer;
        }
      }
    }

    .left-container {
      display: flex;
      flex-direction: column;
      font-size: 1.3rem;
      & > div {
        padding: 0.3rem;
      }
      div:first-child {
        font-size: 1.3rem;
        font-weight: 600;
      }
      div:last-child {
        color: #61606081;
      }
    }

    .right-container {
      display: flex;
      align-items: center;
      text-align: right;
      justify-content: flex-end;

      .guest-count {
        font-size: 1.5rem;
        font-weight: 600;
        width: 1rem;
      }
    }
  }
`;

const MinusButton = styled.button`
  svg {
    opacity: ${props => props.disabled ? 0.35 : 1 };
    cursor: ${props => props.disabled ? 'default' : 'pointer' };
  }
`;

const PlusButton = styled.button`
  svg {
    opacity: ${props => props.disabled ? 0.35 : 1};
    cursor: ${props => props.disabled ? 'default' : 'pointer' };
  }
`

export { ModalLayout, MinusButton, PlusButton };