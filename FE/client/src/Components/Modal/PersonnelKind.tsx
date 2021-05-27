import styled from 'styled-components';
import { IconButton } from "@material-ui/core";
import AddCircleOutlineRoundedIcon from '@material-ui/icons/AddCircleOutlineRounded';
import RemoveCircleOutlineRoundedIcon from '@material-ui/icons/RemoveCircleOutlineRounded';
import { handleCountType } from './PersonnelModal';

type PersonnelKindType = {
  kind: string;
  kindDesc: string;
  count: number;
  handleClickUpDownCount: ({ kind, count }: handleCountType) => () => void;
}

const PersonnelKind = ({ kind, kindDesc, count, handleClickUpDownCount }: PersonnelKindType) => {
  return (
    <PersonWrapper>
      <PersonKindWrapper>
        <KindTitle>{kindTitle[kind]}</KindTitle>
        <KindDesc>{kindDesc}</KindDesc>
      </PersonKindWrapper>
      <CountWrapper>
        <IconButton onClick={handleClickUpDownCount({ kind, count: -1 })} disabled={count === 0}>
          <RemoveCircleOutlineRoundedIcon style={{ fontSize: '2rem' }} />
        </IconButton>
        <CountSpan>{count}</CountSpan>
        <IconButton onClick={handleClickUpDownCount({ kind, count: 1 })} disabled={count === 16}>
          <AddCircleOutlineRoundedIcon style={{ fontSize: '2rem' }} />
        </IconButton>
      </CountWrapper>
    </PersonWrapper>
  )
}

type kindTitleType = {
  [key: string]: string;
};

const kindTitle: kindTitleType = {
  adult: '성인',
  child: '어린이',
  baby: '유아'
}

const PersonWrapper = styled.div`
  display:flex;
  padding: 1rem 0;
  justify-content: space-between;
  & + & {
    border-top: 1px solid #C4C4C4;
  }
`;

const PersonKindWrapper = styled.div`
  place-self: flex-end;
`;

const KindTitle = styled.div`
  font-weight: 700;
`
const KindDesc = styled.div`
  font-size: 14px;
  color:#828282;
  margin-top: .2rem;
`
const CountWrapper = styled.div`
  display:flex;
  place-items: center;
`;

const CountSpan = styled.span`
  font-size:20px;
  font-weight: 700;
  margin: 0 .5rem;
`;

export default PersonnelKind;