import { Link } from 'react-router-dom';

interface Props {
  children: any;
  to: string;
  condition: boolean;
}

const ConditionalLink = ({ children, to, condition }: Props) =>
  !!condition && to ? <Link to={to}>{children}</Link> : <>{children}</>;

export default ConditionalLink;
