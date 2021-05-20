export const createFetchOptions = (method: string, bodyData: object = {}) => {
  if (Object.keys(bodyData).length <= 0) return;
  const arrMethod: string[] = ['GET', 'POST', 'PUT', 'PATCH', 'DELETE'];
  const isMethod: boolean = arrMethod.findIndex((v) => method === v) > -1;
  return {
    method: isMethod ? method : 'GET',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(bodyData),
  };
};
