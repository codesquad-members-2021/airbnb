import styled from 'styled-components';
import { threeDigitsComma } from '../../util/util';
import DefaultButton from '../Common/DefaultButton';

import ModalFluid from '../Common/ModalFluid';

interface IRoomInfoModal {
  data: any;
  isModalVisible: boolean;
  setIsModalVisible: (flag: boolean) => void;
}

const RoomInfoModal = ({data, isModalVisible, setIsModalVisible} : IRoomInfoModal) => {
  return (
    <ModalFluid
      setIsModalVisible={setIsModalVisible}
      isModalVisible={isModalVisible}
    >
      <RoomInfoModalLayout>
        <RoomInfoList>
          <RoomInfoItem className="price-review">
            <div className="price">
              <span className="bold">₩ {`${threeDigitsComma(data.salePrice)}`}</span>
              <span>/ 박</span>
            </div>
            <div className="review">후기 {`${data.commentCount}개`}</div>
          </RoomInfoItem>
          <RoomInfoItem className="date_people">
            <div className="checkin-out">
              <ul>
                <li className="bold">체크인</li>
                <li>2021.05.17</li>
              </ul>
              <ul>
                <li className="bold">체크아웃</li>
                <li>2021.05.20</li>
              </ul>
            </div>
            <div className="people">
              <ul>
                <li className="bold">인원</li>
                <li>게스트 3명</li>
              </ul>
            </div>
          </RoomInfoItem>
          <RoomInfoItem className="reserve">
            <ReserveButton>예약하기</ReserveButton>
            <span>예약 확정 전에는 요금이 청구되지 않습니다.</span>
          </RoomInfoItem>
          <RoomInfoItem className="price-info">
            <ul>
              <li>
                <span>{`${threeDigitsComma(data.salePrice)}`} x {"18"}박</span>
                <span>₩ {`${threeDigitsComma(data.salePrice * 18)}`}</span>
              </li>
              <li className="total">
                <span>총 합계</span>
                <span>₩ {`${threeDigitsComma(data.salePrice * 18)}`}</span>
              </li>
            </ul>
          </RoomInfoItem>
        </RoomInfoList>
      </RoomInfoModalLayout>
    </ModalFluid>
  );
};

export default RoomInfoModal;

// --- Styled Components ---
const RoomInfoModalLayout = styled.div`
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1),
    0px 0px 4px rgba(51, 51, 51, 0.05);
  border-radius: 10px;
  padding: 24px;
  background-color: ${({ theme }) => theme.colors.white};
  min-width: 300px;
`;

const RoomInfoList = styled.ul`
  display: flex;
  flex-direction: column;
`;

const RoomInfoItem = styled.li`
  & + & {
    margin-top: 8px;
  }
  display: flex;
  font-size: ${({ theme }) => theme.fontSize.S};
  font-weight: ${({ theme }) => theme.fontWeight.normal};

  &.price-review {
    justify-content: space-between;

    .price {
      display: flex;
      align-items: center;
      margin: 0 4px;

      color: ${({ theme }) => theme.colors.gray1};

      span.bold {
        font-weight: ${({ theme }) => theme.fontWeight.bold};
        font-size: ${({ theme }) => theme.fontSize.XXL};
      }

      span + span {
        margin-left: 4px;
      }
    }

    .review {
      font-weight: ${({ theme }) => theme.fontWeight.bold};
      color: ${({ theme }) => theme.colors.gray3};
      text-decoration-line: underline;
    }
  }

  &.date_people {
    border: 2px solid ${({ theme }) => theme.colors.gray3};
    border-radius: 10px;

    flex-direction: column;

    ul { padding: 12px; }
    ul li.bold { font-weight: ${({ theme }) => theme.fontWeight.bold} }

    .checkin-out {
      display: grid;
      grid-template-columns: repeat(2, 1fr);
      width: 100%;

      ul { border-bottom: 2px solid ${({ theme }) => theme.colors.gray3} }
      ul + ul { border-left: 2px solid ${({ theme }) => theme.colors.gray3} }
    }
  }

  &.reserve {
    display: flex;
    align-items: center;
    flex-direction: column;
    span {
      padding: 4px 0;
      font-size: ${({ theme }) => theme.fontSize.S};
    }
  }

  &.price-info {
    font-size: ${({ theme }) => theme.fontSize.L};
    ul {
      width: 100%;

      li {
        display: flex;
        justify-content: space-between;

        span:first-child { text-decoration-line: underline }
      }
      li + li { margin-top: 8px }
      li.total {
        span {
          font-weight: ${({ theme }) => theme.fontWeight.bold};
          text-decoration-line: none;
        }
      }
    }
  }
`;

const ReserveButton = styled(DefaultButton)`
  width: 100%;
  background-color: ${({ theme }) => theme.colors.gray1};
  color: ${({ theme }) => theme.colors.white};
  font-weight: ${({ theme }) => theme.fontWeight.bold};
  padding: 16px;
  border-radius: 10px;
`;
