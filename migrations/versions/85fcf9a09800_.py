"""empty message

Revision ID: 85fcf9a09800
Revises: e187b65f7f1b
Create Date: 2021-04-01 21:03:40.387739

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '85fcf9a09800'
down_revision = 'e187b65f7f1b'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('admin_user', sa.Column('avatar', sa.String(length=255), nullable=True, comment='头像'))
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_column('admin_user', 'avatar')
    # ### end Alembic commands ###
