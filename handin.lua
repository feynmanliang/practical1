local t = torch.Tensor({{1,2,3},{4,5,6},{7,8,9}})

--local col = t:sub(1,3,2,2) -- subset [1..3] in dimension 1 (rows), [2..2] in dimension 2
--local col = t[{{1,3},2}] -- selections [1..3] in dimension 1, 2 in dimension 2
--local col = t:narrow(2,2,1) -- dimension 2 (columns) narrowed from [1..3] to [2..2+1-1]
--local col = t:select(2,2) -- select dimension 2 column 2
local col = torch.Tensor():set(t:storage(), 2, torch.LongStorage({3,1}), torch.LongStorage({3,1}))
print(col)
