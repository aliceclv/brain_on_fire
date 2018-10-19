class MigrainesController < BaseController
  def migraines
    @migraines = Migraine.all
  end
end
