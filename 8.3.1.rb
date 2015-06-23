# Proc の return は呼び出し元を抜ける
def proc_return
  Proc.new { return 1; puts :unreadchable }.call
  :unreadchable2
end

p proc_return

begin
  p Proc.new { return 1; puts :unreadchable }.call
rescue => e
  p e.message
end

# Kernel.#lambda の return は呼び出し元を抜けない
p lambda { return 1; puts :unreadchable }.call

def lambda_return
  lambda { return 1; puts :unreadchable }.call
  :reachable
end

p lambda_return

p '--------------------------------------------------'

begin
  p Proc.new { break 1; puts :unreadchable }.call
rescue => e
  p e.message
end

def proc_break
  Proc.new { break 1; puts :unreadchable }.call
end

begin
  p proc_break
rescue => e
  p e.message
end

p lambda { break 1; puts :unreadchable }.call

def lambda_return
  lambda { break 1; puts :unreadchable }.call
  :reachable
end

p lambda_return
