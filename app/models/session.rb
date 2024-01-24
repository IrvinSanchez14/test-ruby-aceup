class Session < ApplicationRecord
  validate :coach_schedule_not_overlapping

  private

  def coach_schedule_not_overlapping
    if coach_hash_id.present? && start.present? && duration.present?
      overlapping_sessions = Session.where(coach_hash_id: coach_hash_id)
                                   .where.not(id: id) # Exclude the current session if updating
                                   .where('start <= ? AND start >=  ?', start + duration.minutes, start)
      if overlapping_sessions.exists?
        errors.add(:base, 'Coach schedule is overlapping with another session')
      end
    end
  end
end